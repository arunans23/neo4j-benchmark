package org.intermine.neo4j.plugin.model;

public class LocatedOn {
    private String chromosome;
    private long start;
    private long end;
    private long strand;

    public LocatedOn() {
    }
    public LocatedOn(long start, long end, long strand) {
        super();
        this.start = start;
        this.end = end;
        this.strand = strand;
    }
    public String getChromosome() {
        return chromosome;
    }
    public void setChromosome(String chromosome) {
        this.chromosome = chromosome;
    }
    public long getStart() {
        return start;
    }
    public void setStart(long start) {
        this.start = start;
    }
    public long getEnd() {
        return end;
    }
    public void setEnd(long end) {
        this.end = end;
    }
    public long getStrand() {
        return strand;
    }
    public void setStrand(long strand) {
        this.strand = strand;
    }
}
